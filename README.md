# EV Smart Load Controller (Assembly - RISC-V)

## Integrantes
| Nome do Aluno | RM |
| :--- | :--- |
| **Luca Almeida Lucareli** | 569061 |
| **Leonardo Scotti Tobias** | 573305 |
| **Henrique Almeida Lucareli** | 569183 |
| **Natan Silva da Costa** | 573100 |
| **Enzo Seiji Delgado Tabuchi** | 573156 |

---

## Problema

Eletropostos modernos utilizam software de alto nível e hardware genérico, o que resulta em:

- Alto consumo energético computacional
- Baixa eficiência no uso de CPU
- Desperdício de recursos em sistemas embarcados

---

## Proposta de Solução

Desenvolver um módulo em **Assembly (RISC-V)** para:

- Gerenciamento eficiente de carga de veículos elétricos
- Distribuição inteligente de energia
- Redução de ciclos de CPU

---

## Arquitetura Utilizada

- Arquitetura: **RISC-V (RV32I)**
- Motivo:
  - Menor complexidade de instruções
  - Melhor eficiência energética
  - Ideal para sistemas embarcados

---

## Funcionamento do Sistema

### 1. Cálculo da Demanda Energética

A demanda é calculada com base no estado de carga (SoC):
```
demanda = 100 - SoC
```


- Quanto menor o SoC, maior a prioridade
- Implementado com complexidade **O(n)**

---

### 2. Hierarquia de Energia (Sustentável)

O sistema prioriza fontes na seguinte ordem:

1. Energia Solar
2. Bateria
3. Rede elétrica

---

## Otimizações Aplicadas

### 1. Redução de Complexidade
- Remoção de algoritmos O(n²) (ex: Bubble Sort)
- Uso de loop linear O(n)

### 2. Menos Acessos à Memória
- Uso intensivo de registradores
- Minimização de leituras em RAM

### 3. Menos Instruções
- Código enxuto
- Menos ciclos de CPU

### 4. Pipeline-Friendly
- Redução de desvios (branches)
- Fluxo de execução mais previsível

---

## Impacto Energético

A otimização em Assembly permite:

- Redução no número de ciclos de clock
- Menor uso de CPU
- Menor consumo de energia

---

## Sustentabilidade

Este projeto contribui diretamente para:

- Uso prioritário de energia renovável
- Redução do consumo energético computacional
- Maior eficiência em sistemas de mobilidade elétrica

---

## Conclusão

A utilização de Assembly em conjunto com arquitetura RISC permite criar sistemas embarcados altamente eficientes, reduzindo o consumo energético e contribuindo para a sustentabilidade na mobilidade elétrica.
