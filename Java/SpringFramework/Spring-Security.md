# <p align="center"> Spring Security </p>
---

## Introduction to Spring Security
### What is Spring Security?
* **A powerful and highly customizable framework** for securing Spring-based applications.
* Handles **authentication** (who you are) and **authorization** (what you can access).
* Integrates easily with **Spring Boot**, **Spring MVC**, **REST APIs**, and more.

### Core Concepts
1. **Autentication**
  * Verifying user identity (login, tokens, etc.)
  * Examples: username/password, JWT, OAuth2, OpenID Connect.
2. **Authorization**
  * Controlling access to resources based on roles or permissions.
  * Examples: `ROLE_ADMIN` can access `/admin/**` endpoints.
3. **Security Filters**
  * Spring Security uses a **filter chain** to process requests.
  * Each filter can perform checks, e.g., authentication, CSRF, CORS.
4. **UserDetails & UserDetailsService**
  * `UserDetails` represents a user’s info (username, password, roles).
  * `UserDetailsService` loads user info from database or memory.
5. **Password Endcoding**
  * Passwords are never stored in plain text.
  * Use `BCryptPasswordEncoder` or `Argon2PasswordEncoder`.

### ypical Spring Security Flow
1. User sends a request.
2. Security filter intercepts request.
3. Authentication manager validates credentials.
4. If valid, `SecurityContext` stores user info.
5. Authorization checks roles/permissions for the requested resource.
6. Request proceeds if allowed; otherwise, access denied.

### Common Use Cases
* Securing REST APIs (JWT, OAuth2).
* Form-based login for web apps.
* Role-based or permission-based access control.
* Integrating with databases for users and roles.
* Protecting against common attacks: CSRF, XSS, session fixation.

### Modern Spring Security in Spring Boot 3.x
* Uses **component-based configuration** with `SecurityFilterChain` instead of extending `WebSecurityConfigurerAdapter`.
* Example:
```java
@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .csrf().disable()
            .authorizeHttpRequests(auth -> auth
                .requestMatchers("/admin/**").hasRole("ADMIN")
                .anyRequest().authenticated()
            )
            .httpBasic(); // For simplicity, using basic auth
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
```
### Advanced Topics
* **JWT Authentication** for stateless REST APIs.
* **OAuth2 / OpenID Connect** login with Google, GitHub, etc.
* **Method-level security** using `@PreAuthorize` and `@Secured`.
* **Custom filters** for logging, rate limiting, or multi-factor auth.
* **Security events** like login failure, logout, etc.

---
1. `UserDetailsService` bean tells Spring Security how to **load users**.
2. `PasswordEncoder` bean is needed to encode and verify passwords.
3. `SecurityFilterChain` bean defines **which endpoints need which roles**.

---

## Difference: `UserDetailsService` vs `UserDetailsManager`

| Feature  | `UserDetailsService`                  | `UserDetailsManager`                                                                          |
| -------- | ------------------------------------- | --------------------------------------------------------------------------------------------- |
| Purpose  | Loads a user by username (read-only)  | Loads **and manages** users (create, update, delete)                                          |
| Methods  | `loadUserByUsername(String username)` | All `UserDetailsService` methods **+** `createUser`, `updateUser`, `deleteUser`, `userExists` |
| Use case | Typical authentication                | Admin panels, registration APIs, dynamic user management                                      |
### InMemoryUserDetailsManager
* InMemoryUserDetailsManager is one of Spring Security’s **built-in implementations** of the `UserDetailsManager` interface.
* It’s super handy for beginners, demos, or small apps where you don’t need a database yet, because it stores user accounts in memory (Java objects) instead of persisting them.

### Where it fits in Spring Security
Spring Security has three closely related interfaces/classes:

| Type                         | Purpose                                                      |
| ---------------------------- | ------------------------------------------------------------ |
| `UserDetailsService`         | Loads user data by username (read-only).                     |
| `UserDetailsManager`         | Extends `UserDetailsService` with **create/update/delete**.  |
| `InMemoryUserDetailsManager` | An in-memory implementation of `UserDetailsManager` (no DB). |

### When to use
* Quick prototypes / learning Spring Security.
* Unit tests or integration tests.
* Simple apps where persistence isn’t required.
* Predefined admin or test users.

### How it works
* Users are stored in memory as a `Map<String, UserDetails>`.
* The data is lost when the application restarts.
* Supports:
 * Creating users (`createUser`)
 * Updating users (`updateUser`)
 * Deleting users (`deleteUser`)
 * Checking existence (`userExists`)

### Basic Configuration's `SecurityConfig`
```java
@Configuration
public class SecurityConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public InMemoryUserDetailsManager userDetailsManager(PasswordEncoder encoder) {
        UserDetails user = User.builder()
                .username("user")
                .password(encoder.encode("password"))
                .roles("USER")
                .build();

        UserDetails admin = User.builder()
                .username("admin")
                .password(encoder.encode("admin123"))
                .roles("ADMIN")
                .build();

        return new InMemoryUserDetailsManager(user, admin);
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .csrf(csrf -> csrf.disable())
            .authorizeHttpRequests(auth -> auth
                .requestMatchers("/admin/**").hasRole("ADMIN")
                .anyRequest().authenticated()
            )
            .httpBasic();
        return http.build();
    }
}
```
**Here:**
* We create an `InMemoryUserDetailsManager` with two users: `user` and `admin`.
* `PasswordEncoder` is used to hash passwords.
* Security rules: `/admin/**` requires `ADMIN` role, everything else just needs authentication.

### Runtime User Management Example
Because `InMemoryUserDetailsManager` implements `UserDetailsManager`, we can dynamically create users:
```java
@RestController
public class UserController {

    private final InMemoryUserDetailsManager userDetailsManager;
    private final PasswordEncoder encoder;

    public UserController(InMemoryUserDetailsManager userDetailsManager, PasswordEncoder encoder) {
        this.userDetailsManager = userDetailsManager;
        this.encoder = encoder;
    }

    @PostMapping("/register")
    public String register(@RequestParam String username, @RequestParam String password) {
        if (userDetailsManager.userExists(username)) {
            return "User already exists";
        }

        UserDetails newUser = User.builder()
                .username(username)
                .password(encoder.encode(password))
                .roles("USER")
                .build();

        userDetailsManager.createUser(newUser);
        return "User registered successfully";
    }
}
```

## Authentication and Authorization
* Spring Security Configuration
```
spring.security.user.name=user1
spring.security.user.password=test123
```

* **User Roles**
| User Id | Password | Roles |
| john  | test123 | EMPLOYEE |
| mary  | test123 | EMPLOYEE, MANAGER |
| susan | test123 | EMPLOYEE, MANAGER, ADMIN |

* **Restrict Access Based on Roles**

| HTTP Method | ENDPOINT           | CRUD Action | Role
| ----------- | -------------------| ----------- | -------- | 
| GET         | /api/uers          | Read all    | EMPLOYEE |
| GET         | /api/uers/{userId} | Read single | EMPLOYEE |
| POST        | /api/uers          | Create      | MANAGER  |
| PUT         | /api/uers          | Update      | MANAGER  |
| DELETE      | /api/uers/{userId} | Delete user | ADMIN    |

* **Test**
```
| Role: MANAGER           |
| Test user: mary/test123 |
| ------------------------+
| Pass: Get all users     |
| Pass: Get single user   |
| Pass: Add user          |
| Pass: Update user       |
| Fail: Delete user       |
```

## Generate BCrypt Passwords
* Access [link](https://www.bcryptcalculator.com/) to generate plain text to BCrypt 

## Introduction to JWT (JSON Web Token)
JWT (JSON Web Token) is very common in Spring Security for stateless authentication. In a Spring Boot + Spring Security app, JWT is typically used to:
* **Authenticate** users without keeping session state on the server (no `HttpSession`).
* Store user identity and roles directly in the token payload.
* Let the client send the token in the `Authorization: Bearer <token> header` for each request.

#### Typical Spring Security + JWT flow:
1. **User logs** in with username/password to `/login` or `/auth`.
2. **Server authenticates** using `AuthenticationManager`.
3. **Server generates JWT** with user details and roles.
4. JWT is returned to the client.
5. **Client stores token** (usually in localStorage or an HTTP-only cookie).
6. For each request, the **client sends token** in the `Authorization` header.
7. A **JWT filter** in Spring Security extracts and validates the token, sets authentication in the `SecurityContext`.

#### Key Components in Spring Security JWT setup:
* **JWT Utility** (to generate/validate tokens).
* **AuthenticationController** (for login & token issuance).
* **CustomUserDetailsService** (to load users from DB).
* **JWT Authentication Filter** (to intercept and validate tokens).
* **SecurityConfig** (to register filter and disable session).

### JWT Flow in Spring Security
```pgsql
             ┌─────────────────────────────┐
             │        Client App           │
             │ (Browser, Mobile, Postman)  │
             └─────────────┬───────────────┘
                           │
   ┌───────────────────────┼───────────────────────────┐
   │ 1. Register/Login Request (username/password)     │
   └───────────────────────┼───────────────────────────┘
                           │
                    ┌──────▼──────┐
                    │ /auth/login │  <-- Public endpoint
                    └──────┬──────┘
                           │
                ┌──────────▼─────────────┐
                │ AuthenticationManager  │
                │   + UserDetailsService |
                └──────────┬─────────────┘
                           │
                  [Verify credentials]
                           │
                           ▼
                 ┌─────────────────┐
                 │   JwtService    │
                 │ (generateToken) │
                 └───────┬─────────┘
                         │
          ┌──────────────▼──────────────┐
          │  Response with JWT Token    │
          │  { "token": "<jwt-token>" } │
          └──────────────┬──────────────┘
                         │
            ┌────────────▼─────────────┐
            │ Client stores the token  │
            │ (localStorage, cookie)   │
            └────────────┬─────────────┘
                         │
   ┌─────────────────────▼─────────────────────┐
   │ 2. Request to protected endpoint (/hello) │
   │    with: Authorization: Bearer <token>    │
   └─────────────────────┬─────────────────────┘
                         │
                ┌────────▼────────┐
                │  JwtAuthFilter  │  <-- Intercepts request
                └────────┬────────┘
                         │
           [Extract token from header]
                         │
           [Validate token with JwtService]
                         │
           [Load user details from DB]
                         │
                         ▼
      ┌───────────────────────────────────────┐
      │ Set Authentication in SecurityContext │
      │  (UsernamePasswordAuthenticationToken)│
      └───────────────────────────────────────┘
                         │
                  ┌──────▼──────┐
                  │ Controller  │
                  │  /hello     │
                  └──────┬──────┘
                         │
           ┌─────────────▼─────────────┐
           │ Return secured resource   │
           │ "Hello, secured world!"   │
           └───────────────────────────┘
```

---
## How a request is processed in a Spring Security-enabled application:
* **Request hits the SecurityFilterChain:** Filters handle various security tasks.
* **AuthenticationManager delegates to ProviderManager:** Authentication providers are consulted to authenticate the user.
* **UserDetailsService and PasswordEncoder(optional):** These are used to retrieve user information and verify credentials.
* **SecurityContextHolder stores authentication details:** The user’s authentication state is stored and available for future security checks.
