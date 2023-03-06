// Variaveis utilizadas para a manipulação no js
const formulario = document.querySelector("#formulario")
const email = document.querySelector("#emailLogin")
const senha = document.querySelector("#senhaLogin")

// como se fosse no python, aqui é uma declaração de função:
function submitar(event){
    event.preventDefault()

    fetch('http://127.0.0.1:5000/consultaCLientes').then((response)=>{
    return response.json()       // requisição de dados de consulta da API local
}).then((json)=>{         //a partir da resposta da API, o tratamento de dados vai ocorrer
                         
    //utilizando os dados salvos no "json", o tratamento também ocorre, em que o json.every vai percorrer a lista de cliente(igual o for) em que se o email e a senha(que foram identificados como ID no formulario tbm) forem iguais aos salvos, um popup vai surgir com a mensagem de logado.
    json.every((cliente)=>{
        if(email.value === cliente[6] && senha.value === cliente[7]){
            alert("logado");
            window.location.href = `http://127.0.0.1:5000/ExibirPerfilCliente/${cliente[0]}`
        return false
    }else{
        return true
    }
    })
})
}

function mudouCampoEmail(e){
    console.log(e.target.value);
}

// No javascript primeiro chamar o ID da função identificada no html:
formulario.addEventListener('submit', submitar)
email.addEventListener('change', mudouCampoEmail)