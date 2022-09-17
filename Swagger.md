Let's understand the above code.

We have added ApiKey to include JWT as an authorization header:

public static final String AUTHORIZATION_HEADER = "Authorization";

private ApiKey apiKey() {
return new ApiKey("JWT", "Authorization", "header");
}
Next, let's configure the JWT SecurityContext with a global AuthorizationScope:

    private SecurityContext securityContext(){
        return SecurityContext.builder().securityReferences(defaultAuth()).build();
    }

    private List<SecurityReference> defaultAuth(){
        AuthorizationScope authorizationScope = new AuthorizationScope("global", "accessEverything");
        AuthorizationScope[] authorizationScopes = new AuthorizationScope[1];
        authorizationScopes[0] = authorizationScope;
        return Arrays.asList(new SecurityReference("JWT", authorizationScopes));
    }
And then, we configured our API Docket bean to include API info, security contexts, and security schemes:

private ApiInfo apiInfo(){
return new ApiInfo(
"Spring Boot Blog REST APIs",
"Spring Boot Blog REST API Documentation",
"1",
"Terms of service",
new Contact("Ramesh Fadatare", "www.javaguides.net", "ramesh@gmail.com"),
"License of API",
"API license URL",
Collections.emptyList()
);
}

    @Bean
    public Docket api(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .securityContexts(Arrays.asList(securityContext()))
                .securitySchemes(Arrays.asList(apiKey()))
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build();
    }
Accessing Swagger UI
Let's say we are creating a blog application and when we start our application, we can access the Swagger UI at:
