document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('input[type=text]').forEach(node => node.addEventListener('keypress', e => {
        if (e.keyCode === 13) {
            e.preventDefault();
        }
    }));
});


function CargarProductoPinturas(idCategoria, idSubCategoria, textoBuscar) {
 
    window.location.href = '/Pinturas?idCategoria=' + idCategoria + '&idSubCategoria=' + idSubCategoria;
}