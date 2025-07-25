# Aplicação de Consulta com LLM

Este projeto permite fazer perguntas a um modelo de linguagem grande (LLM) da OpenAI com base em documentos que você fornece.

## Configuração Inicial

### 1. Configure a API da OpenAI
Crie um arquivo `.env` na raiz do projeto e adicione sua chave API da OpenAI:
```
OPENAI_API_KEY=sua_chave_api_da_openai_aqui
```

### 2. Crie a imagem docker

```bash
docker build -t nome-da-imagem .
```

### 3. Rode o conteiner
Abra seu navegador e acesse:
```bash
docker run -dit -p 5000:5000 --env-file .env --name nome-do-conteiner nome-da-imagem
```

### 4. Rode o conteiner na porta localhost:5000
```bash
localhost:5000
```

### 3. Usando a Aplicação
- Faça upload dos documentos que servirão como base de conhecimento
- Envie perguntas ao LLM baseando-se nos arquivos carregados
- Explore as respostas geradas com base no contexto fornecido
