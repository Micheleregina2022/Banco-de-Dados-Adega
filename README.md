# Banco-de-Dados-Adega

## Sobre
Este projeto proposto pela Ada Tech visa explorar os fundamentos da modelagem de dados. A escolha do tema, uma adega, oferece uma oportunidade única para aplicar conceitos de modelagem de dados em um contexto prático e relevante. A adega é um ambiente complexo que envolve aspectos variados, como tipos de vinho, safras, produtores, e relacionamentos entre eles. A proposta busca proporcionar uma experiência abrangente na criação de um banco de dados funcional e eficiente para gerenciar informações relacionadas ao universo do vinho.
</br>

### **Projeto de Gerenciamento de uma Adega - Passos Propostos**

1. **Escolha do Tipo de Negócio:**
   - **Negócio Selecionado:** Adega
   - **Justificativa:** A escolha da adega proporcionará uma aplicação prática dos conceitos de modelagem de dados em um ambiente específico e interessante, considerando vinhos, safras, produtores e outros elementos relevantes.

2. **Modelagem Conceitual:**
   - Elaborar um Modelo Entidade-Relacionamento (MER) para a adega.
   - Identificar entidades como Vinho, Adega, Produtor, Tipo de Vinho, entre outras.
   - Definir relacionamentos, tipos de atributos e cardinalidades.
   - Garantir a integridade de entidade e referencial no modelo conceitual.

3. **Mapeamento para o Modelo Lógico:**
   - Transformar o MER em um modelo relacional.
   - Definir tabelas como Vinho, Adega, Produtor, TipoVinho, etc.
   - Estabelecer chaves primárias e estrangeiras para manter integridade referencial.

4. **Normalização do Banco de Dados:**
   - Aplicar técnicas de normalização para garantir eficiência e integridade.
   - Documentar as vantagens e desvantagens do processo de normalização, destacando os benefícios na redução de redundâncias e prevenção de anomalias.

5. **Implementação do Banco de Dados:**
   - Utilizar o SQLite para criar o banco de dados conforme o modelo lógico.
   - Inserir dados iniciais representativos no banco. Os dados podem ser fictícios ou de alguma fonte disponível na internet.

6. **Criação de Views:**
   - Identificar cenários onde a criação de views pode ser benéfica na gestão da adega.
   - Desenvolver views relevantes para consultas específicas, considerando operações como agregações, junções, entre outras, para facilitar o acesso e análise dos dados.

</br>

# DESCRIÇÃO DO QUE FOI FEITO ATÉ AGORA

### Tabelas:

#### Adega:
- **Descrição:** Armazena informações sobre diferentes adegas.
- **Campos:**
  - `Id_adega`: Identificador único para cada adega.
  - `Capacidade`: Capacidade de armazenamento da adega.

#### Vinho:
- **Descrição:** Armazena informações sobre os vinhos.
- **Campos:**
  - `Id_vinho`: Identificador único para cada vinho.
  - `Nome`: Nome do vinho.
  - `Tipo`: Tipo do vinho (tinto, branco, rosé).
  - `Ano`: Ano de safra do vinho.
  - `Teor Alcoolico`: Teor alcoólico do vinho.
  - **Chaves Estrangeiras:**
    - `Tipo`: Referencia a tabela `Tipo`.
    - `Ano`: Referencia a tabela `Safra`.

#### Tipo:
- **Descrição:** Classificação dos vinhos por tipo.
- **Campos:**
  - `Id_tipo`: Identificador único para cada tipo.
  - `Tranquilo`: Categoria de vinhos tranquilos.
  - `Espumante`: Categoria de vinhos espumantes.
  - `Fortificados`: Categoria de vinhos fortificados.
  - `Id_vinho`: Referência ao identificador único na tabela `Vinho`.
  - **Chave Estrangeira:**
    - `Id_vinho`: Referencia a tabela `Vinho`.

#### Categoria_Tranquilo:
- **Descrição:** Categorias específicas para vinhos tranquilos.
- **Campos:**
  - `Id_Categoria_tranquilo`: Identificador único para cada categoria.
  - `Fino`: Categoria de vinhos finos.
  - `Mesa`: Categoria de vinhos de mesa.

#### Variedade_categoria_tranquilo:
- **Descrição:** Variedades específicas para vinhos tranquilos.
- **Campos:**
  - `Id_variedade_cat_tranq`: Identificador único para cada variedade.
  - `Tinto`: Variedade de vinhos tintos.
  - `Branco`: Variedade de vinhos brancos.
  - `Rose`: Variedade de vinhos rosés.

</br> </br>

## Views:

#### 1. ListaVindimas:

- **Descrição:** Fornece uma lista de vinhos com detalhes sobre a vindima, incluindo a localização da adega.
- **Campos:**
  - `Nome_Vinho`: Nome do vinho.
  - `Ano_Vindima`: Ano de vindima do vinho.
  - `Tipo_Vinho`: Tipo do vinho (tinto, branco, rosé).
  - `Teor_Alcoolico`: Teor alcoólico do vinho.
  - `Localizacao_Adega`: Localização da adega onde o vinho está armazenado.

#### 2. EstoquePorTipo:

- **Descrição:** Apresenta a contagem de vinhos por tipo.
- **Campos:**
  - `Tipo`: Tipo do vinho (tinto, branco, rosé).
  - `Quantidade`: Quantidade de vinhos desse tipo no estoque.

#### 3. VinhosPorProdutor:

- **Descrição:** Lista os vinhos junto com seus produtores.
- **Campos:**
  - `Nome_Produtor`: Nome do produtor do vinho.
  - `Nome_Vinho`: Nome do vinho.
  - `Ano_Vindima`: Ano de vindima do vinho.
  - `Tipo_Vinho`: Tipo do vinho (tinto, branco, rosé).

#### 4. DetalhesVinhoTranquilo:

- **Descrição:** Detalhes específicos para vinhos tranquilos, incluindo categoria e variedade.
- **Campos:**
  - `Nome_Vinho`: Nome do vinho.
  - `Ano_Vindima`: Ano de vindima do vinho.
  - `Tipo_Vinho`: Tipo do vinho (tinto, branco, rosé).
  - `Categoria_Tranquilo`: Categoria do vinho tranquilo.
  - `Variedade_Fino`: Variedade de vinho fino.
  - `Variedade_Mesa`: Variedade de vinho de mesa.

#### 5. VindimasFuturas:

- **Descrição:** Lista vinhos cuja vindima ocorrerá no futuro.
- **Campos:**
  - `Nome_Vinho`: Nome do vinho.
  - `Ano_Vindima`: Ano de vindima do vinho.
  - `Tipo_Vinho`: Tipo do vinho (tinto, branco, rosé).



