// Selecionar elementos do DOM
const modalHeader       = document.getElementById("modalHeader");
const btnNovoOperador   = document.getElementById("btnNovoOperador");
const editItemBtn       = document.querySelector(".edit-item-btn");
//const btnEditarOperador = document.getElementById("btnEditarOperador");
const closeBtn          = document.getElementsByClassName("closeBtn")[0];
const modalTitle        = document.getElementById("exampleModalLabel");

const VISUALIZAR = 1;
const EDITAR = 2;


/**
 * Função para abrir o modal e alterar o título
 * Autor: Julio Cesar
 * Data: 18/07/2024
 */
btnNovoOperador.onclick = function() {
    modalTitle.innerHTML = "Adicionar Operador"; // Alterar o título do modal
    modalHeader.style.display = 'block';
}


// Função para abrir o modal
function abrirModalEditar() {
   var modal = new bootstrap.Modal( document.getElementById("modalEditar") );
    modal.show();
}

// Função para fechar o modal
function fecharModalEditar() {
    var modal = document.getElementById("modalEditar");
    modal.style.display = "none";
}


document.addEventListener('DOMContentLoaded', function() {

    fetch('http://localhost:8080/toListDataGovernanceEntities/operadores')
        .then(response => response.json())
        .then(data => {
            let tableBody = document.getElementById("listaDataGovernanceEntities");
            tableBody.innerHTML = ''; // Limpar qualquer conteúdo existente

            data.forEach(operador => {
                let row = document.createElement('tr');
                row.setAttribute('operador-id', operador.id);
                row.innerHTML = `  
                    <th scope="col" style="width: 50px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="checkAll" value="option">
                        </div>
                    </th>
                    <td> ${operador.razaosocial} </td>
                    <td> ${operador.cnpj}</td>
                    <td> ${operador.nomeresponsavel}</td>
                    <td> ${operador.telefone}</td>
                    <td> ${operador.email}</td>

                    <td>
                        <ul class="list-inline hstack gap-2 mb-0">
                            <li class="list-inline-item" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Visualizar">
                                 <a href="javascript:void(0);" class="view-item-btn" onclick="visualizarItemClick(this)"> <i class="ri-eye-fill align-bottom text-muted">
                                 </i></a>
                            </li>
                            
                            <li class="list-inline-item" data-bs-toggle="modal" data-bs-trigger="#modalEditar" data-bs-placement="top" title="Editar">
                                <a href="javascript:void(0);" class="edit-item-btn" onclick="editarItemClick(this)"> <i class="ri-pencil-fill align-bottom text-muted">
                                </i></a>
                            </li>
                            
                            <li class="list-inline-item" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Excluir">
                                <a class="remove-item-btn" data-bs-toggle="modal" href="#deleteRecordModal">
                                    <i class="ri-delete-bin-fill align-bottom text-muted"></i>
                                </a>
                            </li>
                        </ul>
                    </td>

                `;

                tableBody.appendChild(row);
            });
        })
        .catch(error => console.error('Error fetching data:', error));
});




/**
 * Função responsável por resgatar o "operador-id" da linha
 * cujo icone visualizar foi clicado.
 * Autor: Julio Cesar
 * Data: 19/07/2024
 */
function visualizarItemClick(anchor) {
    // Encontra a linha pai (<tr>) do <a> clicado
    const row = anchor.closest('tr');
    
    // Obtém o valor do atributo "operador-id" da linha
    const operadorId = row ? row.getAttribute('operador-id') : 'Operador ID não encontrado';
 
    // Exibe o Operador ID em um alerta e preenche o formulário
    if (operadorId) {
        consultarOperadorPorId(operadorId.trim(), VISUALIZAR);
    } else {
        alert('Operador ID não encontrado');
    }

}

/**
 * Função responsável por resgatar o "operador-id" da linha
 * cujo icone Editar foi clicado.
 * Autor: Julio Cesar
 * Data: 26/07/2024
 */
function editarItemClick(anchor) {
    // Encontra a linha pai (<tr>) do <a> clicado
    const row = anchor.closest('tr');
    
    // Obtém o valor do atributo "operador-id" da linha
    const operadorId = row ? row.getAttribute('operador-id') : 'Operador ID não encontrado';
    
    // Exibe o Operador ID em um alerta e preenche o formulário
    if (operadorId) {
        consultarOperadorPorId(operadorId.trim(), EDITAR);
    } else {
        alert('Operador ID não encontrado');
    }

}



/**
 * Função utilizada para pesquisar o Operador por Id
 * @param {*} operadorId 
 * @author Julio Cesar
 * Data: 20/07/2024
 */
function consultarOperadorPorId(operadorId, acao) {

        // Construir a URL do serviço com o operadorId
        const url = `http://localhost:8080/toListDataGovernanceEntities/operadores/${operadorId}`;
        
        // Fazer a solicitação HTTP
        fetch(url)
        .then(response => response.json())
        .then(data => {


            if( acao == VISUALIZAR ){
                   
                let tableBody = document.getElementById("detalheOperador");
                tableBody.innerHTML = ''; // Limpar qualquer conteúdo existente
    
                tableBody.innerHTML = `<tr>
                                            <td class="fw-medium" scope="row">Razão Social</td> <td>${data.razaosocial}</td>
                                    </tr>
                                    <tr>
                                           <td class="fw-medium" scope="row">CNPJ</td> <td>${data.cnpj}</td>
                                    </tr>
                                    <tr>
                                            <td class="fw-medium" scope="row">Responsável</td> <td>${data.nomeresponsavel}</td>
                                    </tr>
                                    <tr>
                                            <td class="fw-medium" scope="row">Endereço</td> <td>${data.endereco}</td>
                                    </tr>
                                    <tr>
                                            <td class="fw-medium" scope="row">Telefone</td> <td>${data.telefone}<i class="ri-star-fill text-warning align-bottom"></i></td>
                                    </tr>
                                   <tr>
                                        <td class="fw-medium" scope="row">Email</td> <td>${data.email}</td>
                                    </tr> `;
    
            }
            
            if( acao == EDITAR ){
    
                document.getElementById("edit-razao-social").value = data.razaosocial;
                document.getElementById("edit-cnpj").value         = data.cnpj;
                document.getElementById("edit-responsavel").value  = data.nomeresponsavel;
                document.getElementById("edit-endereco").value     = data.endereco;
                document.getElementById("edit-telefone").value     = data.telefone;
                document.getElementById("edit-email").value        = data.email;
            
                this.abrirModalEditar();
    
            }

        })
        .catch(error => console.error('Erro ao carregar dados:', error));
    
}




