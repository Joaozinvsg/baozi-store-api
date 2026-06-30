package com.baozistore.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "pedidos")
public class Pedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long clienteId;
    private Long produtoId;
    private Integer quantidade;
}
