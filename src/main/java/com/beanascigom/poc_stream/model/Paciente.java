package com.beanascigom.poc_stream.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.time.LocalDateTime;

@Entity
public class Paciente {
  public Paciente() {}
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private Paciente paciente;
  private Profissional profissional;
  private Consultorio consultorio;
  private LocalDateTime horario;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Paciente getPaciente() {
    return paciente;
  }

  public void setPaciente(Paciente paciente) {
    this.paciente = paciente;
  }

  public Profissional getProfissional() {
    return profissional;
  }

  public void setProfissional(Profissional profissional) {
    this.profissional = profissional;
  }

  public Consultorio getConsultorio() {
    return consultorio;
  }

  public void setConsultorio(Consultorio consultorio) {
    this.consultorio = consultorio;
  }

  public LocalDateTime getHorario() {
    return horario;
  }

  public void setHorario(LocalDateTime horario) {
    this.horario = horario;
  }
}
