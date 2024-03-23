use atv3_bd3_yhan;

delimiter $

create trigger trg_delete_aluno before delete on tb_aluno for each row 
begin
	insert into tb_aluno_bkp
    set 
    id_aluno = old.id_aluno,
    id_turma = old.id_turma,
    nome = old.nome,
    cpf = old.cpf,
    rg = old.rg,
    tel_aluno = old.tel_aluno,
    tel_responsavel = old.tel_responsavel,
    email = old.email,
    data_nascimento = old.data_nascimento,
    deleted_data = now();

    end 
$


