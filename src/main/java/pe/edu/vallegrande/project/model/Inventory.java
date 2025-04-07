package pe.edu.vallegrande.project.model;

import lombok.Data;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import jakarta.persistence.Table;

@Entity
@Data
@Table(name = "inventory")
public class Inventory {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code_product")
    private String code_product;

    @Column(name = "name_product")
    private String name_product;

    @Column(name = "amount")
    private Long amount;

    @Column(name = "description_product")
    private String description_product;

    @Column(name = "price_buys")
    private Double price_buys;

    @Column(name = "price_sale")
    private Double price_sale;

    @Column(name = "id_supplier")
    private Long id_supplier;

    @Column(name = "state")
    private String state;

}
