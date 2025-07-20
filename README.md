# ProjetoServerRestWeb

🚀 Projeto de automação de testes para APIs REST utilizando **Robot Framework**.

## 📌 Descrição

Este projeto tem como objetivo validar endpoints de uma aplicação web RESTful por meio de testes automatizados. Utiliza o poder do Robot Framework para estruturar cenários de teste legíveis, reutilizáveis e fáceis de manter.

## 🧰 Tecnologias Utilizadas

- **Robot Framework** – Framework de automação baseado em palavras-chave  
- **RequestsLibrary** – Para realizar chamadas HTTP  
- **Python** – Linguagem base para execução dos testes  
- **GitHub Actions (opcional)** – Para integração contínua

## 📁 Estrutura do Projeto

- `tests/`: Contém os cenários de teste organizados por funcionalidade  
- `resources/`: Arquivos de suporte com variáveis e palavras-chave reutilizáveis  
- `results/`: Saída dos testes (gerada automaticamente)

## ⚙️ Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/Leandromaz/ProjetoServerRestWeb.git
   cd ProjetoServerRestWeb

2. Instale as depedencias

```pip install robotframework ```
```pip install robotframework-requests```

3. Execute os testes
    ```robot -d ./Logs -i [tag] tests```