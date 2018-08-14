require_relative 'sections'

class AdicionarConta < SitePrism::Section

    element :input_celular,  '#Celular'
    element :input_telefone, '#Telefone'
    element :btn_salvar,     'input[type="submit"]'
    element :msg_sucess,     '.toast-message'
    element :msg_erro,       '#Celular-error'
    
    def cadastroTel(numero)
        input_celular.set numero['Celular']
        input_telefone.set numero['Telefone']
        btn_salvar.click
    end 
end


class ContaPage < SitePrism::Page

    section :topo, Navbar, '.header-nav'
    section :inf_conta, AdicionarConta, '#Perfil' #Perfil é o elemento que corresponde à area onde tem as informações da conta do usuário logado
    section :menu_lateral, MenuDadosCliente, '#CategoriasEsq'
end