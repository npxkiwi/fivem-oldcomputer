document.addEventListener('DOMContentLoaded', function() {
    const closeBTN = document.getElementById('close-btn')

    closeBTN.addEventListener('click', ()=> {
        document.getElementById("window-menu").style.display = 'none'

        fetch(`https://${GetParentResourceName}/closeNUI`, {
            method:'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8'
            },
            body: JSON.stringify({})
        })
    })

    window.addEventListener("message", (event) => {
        const data = event.data;

        if (data.type == 'show') {
            document.getElementById('window-menu').style.display = 'block'
        }
    })
})