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

document.getElementById("copyButton").addEventListener("click", function() {
    // Seleccionar el contenido del input
    var emailInput = document.getElementById("email");
    emailInput.select();
    emailInput.setSelectionRange(0, 99999); // Para dispositivos móviles

    // Copiar el contenido al portapapeles
    document.execCommand("copy");

    // Mostrar un mensaje de confirmación (opcional)
    alert("Correo electrónico copiado: " + emailInput.value);
});



