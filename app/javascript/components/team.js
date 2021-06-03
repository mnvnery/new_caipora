function teamReveal(){
    const mediaQuery = window.matchMedia('(max-width: 600px)')
    if (mediaQuery.matches) {
        $('.team-img').click(function(){
            $(this).next().toggle()
        })
    }
    else {
        $('.team-img').hover(function(){
            $(this).next().toggle()
        })
    }
}

export {teamReveal};