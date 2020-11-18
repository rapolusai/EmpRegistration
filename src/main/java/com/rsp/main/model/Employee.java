package com.rsp.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;

import lombok.Data;
import lombok.NonNull;

@Entity
@Data
@Table(name = "EMPTAB")
public class Employee {

	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String email;
	private String dept;
	private double salary;
	private double hra;
	private double da;
}
