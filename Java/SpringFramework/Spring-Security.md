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
## How a request is processed in a Spring Security-enabled application:
* **Request hits the SecurityFilterChain:** Filters handle various security tasks.
* **AuthenticationManager delegates to ProviderManager:** Authentication providers are consulted to authenticate the user.
* **UserDetailsService and PasswordEncoder(optional):** These are used to retrieve user information and verify credentials.
* **SecurityContextHolder stores authentication details:** The user’s authentication state is stored and available for future security checks.
