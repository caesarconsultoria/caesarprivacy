// Selecionar elementos do DOM
const modalHeader       = document.getElementById("modalHeader");
const btnNovoOperador   = document.getElementById("btnNovoOperador");
const editItemBtn       = document.querySelector(".edit-item-btn");
//const btnEditarOperador = document.getElementById("btnEditarOperador");
const closeBtn          = document.getElementsByClassName("closeBtn")[0];
const modalTitle        = document.getElementById("exampleModalLabel");

/**
 * Função para abrir o modal e alterar o título
 * Autor: Julio Cesar
 * Data: 18/07/2024
 */
btnNovoOperador.onclick = function() {
    modalTitle.innerHTML = "Adicionar Operador"; // Alterar o título do modal
    modalHeader.style.display = 'block';
}

/**
 * Função para editar o modal e alterar o título
 * Autor: Julio Cesar
 * Data: 18/07/2024
 */
editItemBtn.addEventListener('click', function(event) {
    event.preventDefault(); // Previne o comportamento padrão do link (abrir o modal)
    modalTitle.innerHTML = "Editar Operador"; // Alterar o título do modal
});



/**
 * Essa função é chamada assim que a página é carregada
 * Ela é responsável por carregar a tabela com a lista de Operadores existentes
 * Autor: Julio Cesar
 * Data: 19/07/2024 
 */

document.addEventListener('DOMContentLoaded', function() {

    fetch('http://localhost:8080/toListDataGovernanceEntities/operadores')
        .then(response => response.json())
        .then(data => {
            let tableBody = document.getElementById("listaDataGovernanceEntities");
            tableBody.innerHTML = ''; // Limpar qualquer conteúdo existente

            data.forEach(governanceEntity => {
                let row = document.createElement('tr');
                row.setAttribute('operador-id', governanceEntity.id);
                

                row.innerHTML = `
                    <th scope="col" style="width: 50px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="checkAll" value="option">
                        </div>
                    </th>
                    <td> ${governanceEntity.razaosocial} </td>
                    <td> ${governanceEntity.cnpj}</td>
                    <td> ${governanceEntity.nomeresponsavel}</td>
                    <td> ${governanceEntity.telefone}</td>
                    <td> ${governanceEntity.email}</td>

                    <td>
                        <ul class="list-inline hstack gap-2 mb-0">
                            
                            <li class="list-inline-item edit" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Ligar">
                                <a href="javascript:void(0);" class="text-muted d-inline-block">
                                    <i class="ri-phone-line fs-16"></i>
                                </a>
                            </li>
                            
                            <li class="list-inline-item edit" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Menssagem">
                                <a href="javascript:void(0);" class="text-muted d-inline-block">
                                    <i class="ri-question-answer-line fs-16"></i>
                                </a>
                            </li>
                            
                            <li class="list-inline-item" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Visualizar">
                                <a href="javascript:void(0);" class="view-item-btn" onclick="handleViewItemClick(this)"> <i class="ri-eye-fill align-bottom text-muted"></i></a>
                            </li>
                            
                            <li class="list-inline-item" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Editar">
                                <a class="edit-item-btn" href="#showModal" data-bs-toggle="modal"><i class="ri-pencil-fill align-bottom text-muted"></i></a>
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
function handleViewItemClick(anchor) {
    
    // Encontra a linha pai (<tr>) do <a> clicado
    const row = anchor.closest('tr');
    
    // Obtém o valor do atributo "operador-id" da linha
    const operadorId = row ? row.getAttribute('operador-id') : 'Operador ID não encontrado';
    
    // Exibe o Operador ID em um alerta
    // alert(operadorId ? operadorId.trim() : 'Operador ID não encontrado');
 
    // Exibe o Operador ID em um alerta e preenche o formulário
    if (operadorId) {
        consultarOperadorPorId(operadorId.trim());
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
async function consultarOperadorPorId(operadorId) {
    try {
        
        // Construir a URL do serviço com o operadorId
        const url = `http://localhost:8080/toListDataGovernanceEntities/operadores/${operadorId}`;
        
        // Fazer a solicitação HTTP
        const response = await fetch(url);
        
        // Verificar se a resposta é bem-sucedida
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        
        // Converter a resposta para JSON
        const data = await response.json();
        
        let tableBody = document.getElementById("detalheOperador");
        tableBody.innerHTML = ''; // Limpar qualquer conteúdo existente

        tableBody.innerHTML = '<tr>'+
                                    '<td class="fw-medium" scope="row">Razão Social</td>'+
                                    '<td>'+data.razaosocial+'</td>'+
                              '</tr>'+
                              '<tr>'+
                                    '<td class="fw-medium" scope="row">CNPJ</td>'+
                                    '<td>'+data.cnpj+'</td>'+
                              '</tr>'+
                              '<tr>'+
                                    '<td class="fw-medium" scope="row">Responsável</td>'+
                                    '<td>'+data.nomeresponsavel+'</td>'+
                              '</tr>'+
                              '<tr>'+
                                    '<td class="fw-medium" scope="row">Endereço</td>'+
                                    '<td>'+data.endereco+'</td>'+
                              '</tr>'+
                              '<tr>'+
                                    '<td class="fw-medium" scope="row">Telefone</td>'+
                                    '<td>'+data.telefone+'<i class="ri-star-fill text-warning align-bottom"></i></td>'+
                             '</tr>'+
                             '<tr>'+
                                '<td class="fw-medium" scope="row">Email</td>'+
                                '<td>'+data.email+'</td>'+
                            '</tr>';
    } catch (error) {
        console.error('Error fetching or populating form:', error);
    }
}




