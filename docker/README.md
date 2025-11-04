
## 🐳 Configuração e Execução do Ambiente Docker

O ambiente de banco de dados Oracle é executado dentro de um container Docker, garantindo que você possa testar seus scripts PL/SQL de forma isolada, simples e reproduzível.

---

### 🔹 1. Detalhes do ambiente `.env`

O arquivo .env possui variáveis de ambiente, que servem para configurar o banco de dados. Você precisa delas para acessar o banco de dados após a sua inicialização.

```bash
ORACLE_PASSWORD="Senha123"
ORACLE_APP_USER="my_user"
ORACLE_APP_PASSWORD="my_password"
```

---


### 📦 Executar o banco com Docker

```bash
docker compose up -d
```

### 🧹 Parar o Container

```bash
docker compose down -v
```