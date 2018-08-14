
Quando('solicito a exclusao de um endereço cadastrado') do
    @endereco.menu_lateral.btn_meus_enderecos.click
    @endereco.minha_conta.removerEndereco
    within('.modal-footer') do
        #find('#btnDeleteEndereco').hover
        #page.find(:css, '#confirm-delete').click
        click_link('#btnDeleteEndereco')
    end
end
  
Então('o endereço eh excluido da lista dos meus endereços') do
    pending # Write code here that turns the phrase above into concrete actions
end