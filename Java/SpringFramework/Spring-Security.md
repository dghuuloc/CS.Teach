# <p align="center"> Spring Security </p>
---

## How a request is processed in a Spring Security-enabled application:
* **Request hits the SecurityFilterChain:** Filters handle various security tasks.
* **AuthenticationManager delegates to ProviderManager:** Authentication providers are consulted to authenticate the user.
* **UserDetailsService and PasswordEncoder(optional):** These are used to retrieve user information and verify credentials.
* **SecurityContextHolder stores authentication details:** The user’s authentication state is stored and available for future security checks.
