<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
<html>
    <head>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Ada Tech Locadora</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Novidades</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Taxas</a>
            </li>
            <li class="nav-item">
              <a class="nav-link">Para empresas</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
      <%
              String aluguel = (String) request.getAttribute("data_retirada");
              String retorno = (String) request.getAttribute("data_devolucao");
      %>
    <form>
      <div class="container-md">
          <p class="text-center fs-1">Detalhes da Reserva</p>
          <div class="mb-3 row">
             <label for="staticTipo" class="col-md-2 col-form-label">Nome</label>
             <div class="col-md-10">
               <input type="text" readonly class="form-control-plaintext" id="staticNome" value="<%= request.getAttribute("nome") %>" class="form-control">
             </div>
          </div>
          <div class="mb-3 row">
             <label for="staticTipo" class="col-md-2 col-form-label">e-mail</label>
             <div class="col-md-10">
               <input type="email" readonly class="form-control-plaintext" id="staticEmail" value="<%= request.getAttribute("email") %>" class="form-control">
             </div>
          </div>
          <div class="mb-3 row">
              <label for="staticIdade" class="col-md-2 col-form-label">Marca</label>
              <div class="col-md-10">
                <input type="text" readonly class="form-control-plaintext" id="staticMarca" value="<%= request.getAttribute("marca") %>">
              </div>
          </div>
          <div class="mb-3 row">
            <label for="staticAddress" class="col-md-2 col-form-label">Modelo</label>
            <div class="col-md-10">
              <input type="text" readonly class="form-control-plaintext" id="staticModelo" value="<%= request.getAttribute("modelo") %>">
            </div>
          </div>
          <div class="mb-3 row">
            <label for="staticAddress" class="col-md-2 col-form-label">Retirada</label>
            <div class="col-md-10">
              <input type="text" readonly class="form-control-plaintext" id="staticRetirada" value=<%=aluguel%>>
            </div>
          </div>
          <div class="mb-3 row">
            <label for="staticAddress" class="col-md-2 col-form-label">Devolução</label>
            <div class="col-md-10">
              <input type="text" readonly class="form-control-plaintext" id="staticDevolução" value=<%=retorno%>>
            </div>
          </div>
          <div class="mb-3 row">
            <label for="staticAddress" class="col-md-2 col-form-label">Total diárias</label>
            <div class="col-md-10">
              <input type="number" readonly class="form-control-plaintext" id="staticDiarias" value="<%= request.getAttribute("diarias") %>">
            </div>
          </div>
          <div class="mb-3 row">
            <label for="staticAddress" class="col-md-2 col-form-label">Valor total</label>
            <div class="col-md-10">
              <input type="number" readonly class="form-control-plaintext" id="staticPreco" value="<%= request.getAttribute("preco") %>">
            </div>
          </div>
      </div>
     </form>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
      <footer class="bg-light text-dark py-3">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <p>&copy; 2023 Projeto Web I. Jsp Pages and Servlets.</p>
            </div>
            <div class="col-md-6 text-md-end">
              <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Política de Privacidade</a></li>
                <li class="list-inline-item"><a href="#">Termos de Uso</a></li>
                <li class="list-inline-item"><a href="#">Fale Conosco</a></li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </body>
</html>

