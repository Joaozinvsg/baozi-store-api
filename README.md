# 🥟 Baozi Store API

API REST desenvolvida com **Java + Spring Boot** para gerenciamento de uma loja fictícia de pão chinês (baozi). Projeto prático da disciplina de Desenvolvimento Back-end.

---

## 🛠️ Tecnologias

- Java 17
- Spring Boot 3.3
- Spring Data JPA
- Hibernate
- MySQL / MariaDB
- Lombok
- Maven

---

## 📁 Estrutura do Projeto

```
baozi-store/
├── src/main/java/com/baozistore/
│   ├── BaoziStoreApplication.java
│   ├── model/
│   │   ├── Cliente.java
│   │   ├── Produto.java
│   │   └── Pedido.java
│   ├── repository/
│   │   ├── ClienteRepository.java
│   │   ├── ProdutoRepository.java
│   │   └── PedidoRepository.java
│   └── controller/
│       ├── ClienteController.java
│       ├── ProdutoController.java
│       └── PedidoController.java
└── src/main/resources/
    └── application.properties
```

---

## ⚙️ Como Executar

### Pré-requisitos

- Java 17+
- Maven 3.9+
- MySQL ou MariaDB

### 1. Clonar o repositório

```bash
git clone https://github.com/Joaozinvsg/baozi-store-api.git
cd baozi-store-api
```

### 2. Criar o banco de dados

```sql
CREATE DATABASE baozi_store;
```

### 3. Configurar o `application.properties`

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/baozi_store
spring.datasource.username=root
spring.datasource.password=sua_senha
```

### 4. Rodar a aplicação

```bash
mvn spring-boot:run
```

A API estará disponível em: `http://localhost:8080`

---

## 📦 Entidades

### Cliente
| Campo | Tipo |
|---|---|
| id | Long (PK, auto) |
| nome | String |
| clienteDesde | LocalDate |

### Produto
| Campo | Tipo |
|---|---|
| id | Long (PK, auto) |
| nome | String |
| preco | BigDecimal |
| estoque | Boolean |

### Pedido
| Campo | Tipo |
|---|---|
| id | Long (PK, auto) |
| clienteId | Long |
| produtoId | Long |
| quantidade | Integer |

---

## 🔗 Endpoints

### Clientes `/clientes`

| Método | Endpoint | Descrição |
|---|---|---|
| POST | `/clientes` | Cadastrar cliente |
| GET | `/clientes` | Listar todos |
| GET | `/clientes/{id}` | Buscar por ID |
| DELETE | `/clientes/{id}` | Deletar |

### Produtos `/produtos`

| Método | Endpoint | Descrição |
|---|---|---|
| POST | `/produtos` | Cadastrar produto |
| GET | `/produtos` | Listar todos |
| GET | `/produtos/{id}` | Buscar por ID |
| DELETE | `/produtos/{id}` | Deletar |

### Pedidos `/pedidos`

| Método | Endpoint | Descrição |
|---|---|---|
| POST | `/pedidos` | Criar pedido |
| GET | `/pedidos` | Listar todos |
| GET | `/pedidos/{id}` | Buscar por ID |
| DELETE | `/pedidos/{id}` | Deletar |

---

## 📬 Exemplos de Requisição (JSON)

### POST /clientes
```json
{
    "nome": "João Vitor Simão Gonçalves RU:4738852",
    "clienteDesde": "2026-06-29"
}
```

### POST /produtos
```json
{
    "nome": "Baozi Tradicional de Carne",
    "preco": 12.50,
    "estoque": true
}
```

### POST /pedidos
```json
{
    "clienteId": 1,
    "produtoId": 1,
    "quantidade": 5
}
```
