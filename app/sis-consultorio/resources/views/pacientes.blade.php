@extends('layout.app',["current" => "Pacientes"])

@section('title','Pacientes')
@section('body')
    <div class="container">
        <div class="card mt-3">
            <div class="card-header">
                <div class="text-center h2 mt-2">Cadastro de Pacientes</div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="nome" class="obrigatorio">Nome</label>
                        <input class="form-control" type="text" name="nome" id="nome">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="data_nascimento" class="obrigatorio">Dt. Nascimento</label>
                        <input class="form-control" type="date" name="data_nascimento" id="data_nascimento">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="cpf" class="obrigatorio">CPF</label>
                        <input class="form-control" type="text" name="cpf" id="cpf">
                    </div>
                </div>
                <div class="form-row">

                    <div class="form-group col-md-3">
                        <label for="rg">Identidade</label>
                        <input class="form-control" type="text" name="rg" id="rg">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="orgao_emissor" >Org. Emissor</label>
                        <input class="form-control" type="text" name="orgao_emissor" id="orgao_emissor">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="orgao_emissor" >Data Emissão</label>
                        <input class="form-control" type="text" name="orgao_emissor" id="orgao_emissor">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="orgao_emissor" >UF Emissor</label>
                        <select class="form-control" name="uf_emissor" id="uf_emissor">
                            <option value="">Selecione...</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="telefone" >Telefone</label>
                        <input class="form-control" type="text" name="telefone" id="telefone">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="telefone" class="obrigatorio">Celular</label>
                        <input class="form-control" type="text" name="celular" id="celular">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefone" >Email</label>
                        <input class="form-control" type="email" name="email" id="email">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="cep" class="obrigatorio">CEP</label>
                        <input class="form-control" type="text" name="cep" id="cep">
                    </div>
                    <div class="form-group col-md-7">
                        <label for="endereco" class="obrigatorio">Endereço</label>
                        <input class="form-control" type="text" name="cep" id="cep">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="numero" class="obrigatorio">Número</label>
                        <input class="form-control" type="text" name="numero" id="numero">
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
