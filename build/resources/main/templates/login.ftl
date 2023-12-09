<!DOCTYPE html>
<html>
<head>
    <title>Login Custom Para Ti</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
    />
</head>
<body class="text-center">
<div class="container-fluid w-25 mt-5">
    <h1 class="fs-1 mt-10">Log-in</h1>
    <form role="form" action="/login" method="post">
        <#-- Linea para controlar el ataque csrf-->
        <#if _csrf??> <#--validando que no sea nula, si lo es, está deshabilitado el csrf -->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </#if>
        <div class="form-floating">
            <input
                    type="text"
                    name="username"
                    id="username"
                    required
                    autofocus
                    class="form-control"
            />

            <label for="username" class="form-label">Usuario</label>
        </div>
        <div class="form-floating mt-4 mb-2">
            <input
                    type="password"
                    name="password"
                    id="password"
                    required
                    class="form-control"
            />
            <label for="password" class="form-label">Password</label>
        </div>
        <#if error.isPresent()>
            <p class="text-danger" role="alert" class="mt-2">
                Usuario ingresado no existe
            </p>
        </#if>
        <div>
            <label
                    for="remember-me"
                    class="form-label"
                    class="form-check-label"
            >Recuerdame</label
            >
            <input
                    type="checkbox"
                    name="remember-me"
                    id="remember-me"
                    class="form-check-input"
            />
        </div>
        <div class="d-grid">
            <button class="btn btn-primary" type="submit">
                Sign in
            </button>
        </div>
    </form>

    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
    ></script>
</div>
</body>
</html>
