class Client {
  String? name;
  String? name2;
  String? cpf;

  String? social;
  String? cnpj;

  Client({
    this.name,
    String? name2,
    this.cpf,
    this.social,
    this.cnpj,
  })  : name2 = name2,
        assert(
            (cpf != null)
                ? name != null && social == null && cnpj == null
                : true,
            'You send cpf with cnpj'),
        assert(
            (cnpj != null)
                ? name != null && social == null && cpf == null
                : true,
            'You send cnpj with cpf');
}
