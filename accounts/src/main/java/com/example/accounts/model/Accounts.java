package com.example.accounts.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter @Setter @ToString
public class Accounts {

	@Column(name="account_number")
	@Id
	private long accountNumber;
	@Column(name = "customer_id")
	private int customerId;
	@Column(name="account_type")
	private String accountType;
	@Column(name = "country")
	private String country;
	@Column(name = "branch_address")
	private String branchAddress;
	@Column(name = "creation_date")
	private LocalDate creationDate;
	
}
