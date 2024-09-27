package com.beanascigom.poc_stream.model;

import jakarta.persistence.*;

@Entity
public class Profissional {
  public Profissional() {}
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private String nome;
  @Column(length = 6)
  private String registroProfissional;
  private String especialidade;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getRegistroProfissional() {
    return registroProfissional;
  }

  public void setRegistroProfissional(String registroProfissional) {
    this.registroProfissional = registroProfissional;
  }

  public String getEspecialidade() {
    return especialidade;
  }

  public void setEspecialidade(String especialidade) {
    this.especialidade = especialidade;
  }
}
