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


// Função para fechar o modal
closeBtn.onclick = function() {
    modal.style.display = "none";
}

// Fechar o modal se o usuário clicar fora dele
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}