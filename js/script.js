/*FUNCION PARA EL BOTON COPIAR*/ 

document.getElementById("copyButton").addEventListener("click", function() {
    // Obtén el valor del input
    var emailInput = document.getElementById("email").value;

    // Utiliza la API de Portapapeles para copiar
    navigator.clipboard.writeText(emailInput).then(function() {
        // Mostrar un mensaje de confirmación (opcional)
        alert("Correo electrónico copiado: " + emailInput);
    }).catch(function(error) {
        console.error("Error al copiar: ", error);
    });
});







