// Selecionar elementos do DOM
const modalHeader       = document.getElementById("modalHeader");
const btnNovoOperador   = document.getElementById("btnNovoOperador");
const editItemBtn       = document.querySelector(".edit-item-btn");
//const btnEditarOperador = document.getElementById("btnEditarOperador");
const closeBtn          = document.getElementsByClassName("closeBtn")[0];
const modalTitle        = document.getElementById("exampleModalLabel");


// Função para abrir o modal e alterar o título
btnNovoOperador.onclick = function() {
    modalTitle.innerHTML = "Adicionar Operador"; // Alterar o título do modal
    modalHeader.style.display = 'block';
}

// Função para editar o modal e alterar o título
editItemBtn.addEventListener('click', function(event) {
    event.preventDefault(); // Previne o comportamento padrão do link (abrir o modal)
    // Adicione aqui a lógica que você quer executar quando o ícone for clicado
   // alert('Ícone de edição clicado');
    modalTitle.innerHTML = "Editar Operador"; // Alterar o título do modal
    // Se você quiser abrir o modal manualmente, pode fazer isso aqui
    // document.getElementById('showModal').style.display = 'block';
});




//dfdfd 
document.addEventListener('DOMContentLoaded', function() {
    


    fetch('http://localhost:8080/toListDataGovernanceEntities/operadores')
        .then(response => response.json())
        .then(data => {
            let tableBody = document.getElementById("listaDataGovernanceEntities");
            tableBody.innerHTML = ''; // Limpar qualquer conteúdo existente

            data.forEach(governanceEntity => {
                let row = document.createElement('tr');

                row.innerHTML = `
                    <th scope="col" style="width: 50px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="checkAll" value="option">
                        </div>
                    </th>

                    <td>${governanceEntity.razaosocial}</td>
                    <td>${governanceEntity.cnpj}</td>
                    <td>${governanceEntity.nomeresponsavel}</td>
                    <td>${governanceEntity.telefone}</td>
                    <td>${governanceEntity.email}</td>

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
                                <a href="javascript:void(0);" class="view-item-btn"><i class="ri-eye-fill align-bottom text-muted"></i></a>
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