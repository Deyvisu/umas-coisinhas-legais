class Cliente:

    def __init__(self,id,nomeCompleto,idade,dataNasc,cpf,telefone,email,senha):
        self._id = id
        self._nomeCompleto = nomeCompleto
        self._idade = idade
        self._dataNasc = dataNasc
        self._cpf = cpf
        self._telefone = telefone
        self._email = email
        self._senha = senha

    def inserirCliente(self, tabela):
        sql = f'''
        INSERT INTO "{tabela}"
        Values({self._id},'{self._nomeCompleto}','{self._idade}','{self._dataNasc}', '{self._cpf}', '{self._telefone}', '{self._email}', '{self._senha}')
        '''

        return sql
    
    def listarCliente(self, tabela):
        
        sql = f'''
        SELECT * FROM "{tabela}" 
        WHERE "E-mail" = '{self._email}' and "Senha" = '{self._senha}'
        
        '''
        return sql
    
    def DeletarCliente(self, tabela):

        sql = f'''
        DELETE FROM "{tabela}"
        WHERE "ID" = {self._id}
        
        '''
        return sql
    
    def alterarCliente(self, tabela):

        sql = f'''
        UPDATE "{tabela}"
        SET "Nome Completo" = '{self._nomeCompleto}', "Idade" = '{self._idade}', "Data Nascimento" = '{self._dataNasc}', "CPF" = '{self._cpf}', "Telefone" = '{self._telefone}', "E-mail" = '{self._email}', "Senha" = '{self._senha}'
        WHERE "ID" = '{self._id}'
        '''
        return sql

    def imprimirCliente(self):
    
        return f'''
    Cliente:
    ID: {self._id}
    Nome Completo do Cliente: {self._nomeCompleto}
    Idade: {self._idade}
    Data do Nascimento: {self._dataNasc}
    CPF: {self._cpf}
    Telefone: {self._telefone}
    E-mail: {self._email}
    Senha: {self._senha}
        
        '''