require_relative 'sections'


class PesquisaPage < SitePrism::Page

    section :topo, Navbar, '.header-nav'
    

    element :btn_buscar, '.spr-search-button'
    element :input_buscar, '#buscaProduto'
    element :lista_produtos, '#ui-id-1'
    element :produto, '.produto-lista a[href="/Shopping/Catalogo/Produto/1/46/3978412/ferro-de-passar-1500w-durathon-hamilton-beach-127v"]'

    def pesquisar(prod)
        input_buscar.click
        input_buscar.set prod
        btn_buscar.click
    end

end