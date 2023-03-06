class Endereço:

    def __init__(self,id,cep,nomeRua,numero,complemento,nomeBairro,pontoReferencia,cidade,estado,idCli):
        self._id = id
        self._cep = cep
        self._nomeRua = nomeRua
        self._numero = numero
        self._complemento = complemento
        self._nomeBairro = nomeBairro
        self._pontoReferencia = pontoReferencia
        self._cidade = cidade
        self._estado = estado
        self._idCli = idCli

    def inserirEndereço(self, tabela):
        sql = f'''
        INSERT INTO "{tabela}"
        Values({self._id},'{self._cep}','{self._nomeRua}','{self._numero}', '{self._complemento}', '{self._nomeBairro}', '{self._pontoReferencia}', '{self._cidade}', '{self._estado}', '{self._idCli}')
        '''

        return sql
    
    def listarEndereço(self, tabela):
        
        sql = f'''
        SELECT * FROM "{tabela}" 
        WHERE "ID" = {self._id}
        
        '''
        return sql
    
    def DeletarEndereço(self, tabela):

        sql = f'''
        DELETE FROM "{tabela}"
        WHERE "ID" = {self._id}
        
        '''
        return sql
    
    def alterarEndereço(self, tabela):

        sql = f'''
        UPDATE "{tabela}"
        SET "CEP" = '{self._cep}', "Nome_Rua" = '{self._nomeRua}', "Numero" = '{self._numero}', "Complemento" = '{self._complemento}', "Nome_Bairro" = '{self._nomeBairro}', "Ponto_Referencia" = '{self._pontoReferencia}', "Cidade" = '{self._cidade}', "Estado" = '{self._estado}', "ID_Cliente" = '{self._idCli}'
        WHERE "ID" = '{self._id}'
        '''
        return sql

    def imprimirEndereço(self):
    
        return f'''
    Endereço:
    ID do Cliente: {self._idCli}
    ID do Endereço: {self._id}
    Nome da Rua: {self._nomeRua}
    Número: {self._numero}
    Complemento: {self._complemento}
    Nome do Bairro: {self._nomeBairro}
    Ponto de Referência: {self._pontoReferencia}
    Cidade: {self._cidade}
    Estado: {self._estado}
        
        '''