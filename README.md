# Aplicação de Consulta com LLM

Este projeto permite fazer perguntas a um modelo de linguagem grande (LLM) da OpenAI com base em documentos que você fornece.

## Configuração Inicial

### 1. Configure a API da OpenAI
Crie um arquivo `.env` na raiz do projeto e adicione sua chave API da OpenAI:
```
OPENAI_API_KEY=sua_chave_api_da_openai_aqui
```

### 2. Configuração do Ambiente Virtual

#### No Linux/macOS:
```bash
# Crie o ambiente virtual
python -m venv pjtvenv

# Ative o ambiente virtual
source pjtvenv/bin/activate
```

#### No Windows:
```bash
# Crie o ambiente virtual
python -m venv pjtvenv

# Ative o ambiente virtual (CMD)
pjtvenv\Scripts\activate

# OU se estiver usando PowerShell
# pjtvenv\Scripts\Activate.ps1
```

### 3. Instalação das Dependências
Com o ambiente virtual ativado, instale as dependências necessárias:
```bash
pip install -r requirements.txt
```

## Executando a Aplicação

### 1. Inicie o Servidor
```bash
python app.py
```

### 2. Acesse a Interface Web
Abra seu navegador e acesse:
```
http://127.0.0.1:5000
```

### 3. Usando a Aplicação
- Faça upload dos documentos que servirão como base de conhecimento
- Envie perguntas ao LLM baseando-se nos arquivos carregados
- Explore as respostas geradas com base no contexto fornecido

### 4. Encerrando a Aplicação
Quando terminar de usar a aplicação:
1. Encerre o servidor com `Ctrl+C` no terminal
2. Desative o ambiente virtual:
```bash
deactivate
```

## Solução de Problemas

- Se encontrar erros relacionados à API da OpenAI, verifique se a chave API no arquivo `.env` está correta.
- Se o ambiente virtual não ativar corretamente, tente o comando alternativo adequado ao seu sistema operacional.
- Para problemas de instalação de pacotes, verifique sua conexão com a internet e se o pip está atualizado.
- **Usuários Windows**: Algumas dependências requerem Microsoft Visual C++ versão 14.0 ou superior. Se encontrar erros durante a instalação relacionados ao compilador C++, instale ou atualize o [Microsoft Visual C++ Build Tools](https://visualstudio.microsoft.com/visual-cpp-build-tools/).

## Requisitos do Sistema
- Python 3.8 ou superior
- Acesso à internet para comunicação com a API da OpenAI
