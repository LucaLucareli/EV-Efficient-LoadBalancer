# EV Smart Load Controller (RISC-V Assembly)

## Integrantes

| Nome                       | RM     |
| -------------------------- | ------ |
| Luca Almeida Lucareli      | 569061 |
| Leonardo Scotti Tobias     | 573305 |
| Henrique Almeida Lucareli  | 569183 |
| Natan Silva da Costa       | 573100 |
| Enzo Seiji Delgado Tabuchi | 573156 |

---

## Visão Geral

Este projeto implementa um **controlador inteligente de carga para veículos elétricos** utilizando **Assembly RISC-V (RV32I)**, com foco em:

* Eficiência computacional
* Baixo consumo de energia
* Otimização de recursos em sistemas embarcados
  
---

## Solução Proposta

Desenvolver um módulo em **Assembly (RISC-V)** capaz de:

* Calcular a demanda energética dos veículos
* Priorizar fontes de energia de forma inteligente
* Reduzir ciclos de processamento
* Operar com alta eficiência energética

---

## Arquitetura

* **ISA:** RISC-V (RV32I)
* **Motivação:**

  * Simplicidade e previsibilidade
  * Baixo overhead computacional
  * Ideal para aplicações embarcadas e IoT
  * Maior eficiência energética comparado a arquiteturas complexas

---

## Funcionamento

### 1. Cálculo da Demanda

A demanda de cada veículo é baseada no seu estado de carga (SoC):

```text
demanda_individual = 100 - SoC
demanda_total = Σ demanda_individual
```

* Complexidade: **O(n)**
* Abordagem linear e eficiente

---

### 2. Estratégia de Distribuição de Energia

O sistema utiliza uma abordagem sustentável, priorizando:

1. Energia Solar
2. Bateria
3. Rede Elétrica

A decisão é feita com o menor número possível de desvios (branches), otimizando o pipeline da CPU.

---

## Otimizações Implementadas

### Redução de Complexidade

* Eliminação de algoritmos desnecessários
* Uso exclusivo de loops lineares

### Minimização de Acessos à Memória

* Uso intensivo de registradores
* Carregamento único de dados críticos

### Código Enxuto

* Menor número de instruções
* Execução mais rápida

### Pipeline Optimization

* Redução de branches
* Fluxo previsível de execução

---

## Eficiência Energética

O uso de Assembly permite:

* Menos ciclos de clock por operação
* Redução do uso da CPU
* Menor consumo energético total
* Melhor desempenho por watt

---

## Sustentabilidade

O sistema contribui diretamente para:

* Prioridade no uso de energia renovável
* Redução do desperdício energético
* Eficiência em infraestrutura de mobilidade elétrica

---

## Possíveis Extensões

* Integração com sensores IoT
* Monitoramento em tempo real
* Implementação em hardware real (SoC RISC-V)
* Interface com sistemas de smart grid

---

## Conclusão

Este projeto demonstra que o uso de **Assembly em arquitetura RISC-V** pode gerar soluções altamente eficientes para sistemas embarcados, especialmente em cenários críticos como o gerenciamento de energia em eletropostos.
