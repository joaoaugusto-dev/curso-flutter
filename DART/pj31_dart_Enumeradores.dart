enum StatusPagamento { pendente, pago, reembolsado }

void main() {
  StatusPagamento status = StatusPagamento.pago;
  switch (status) {
    case StatusPagamento.pendente:
    case StatusPagamento.pago:
    case StatusPagamento.reembolsado:
  }

  print(status.index); //transformar texto em indice numeral
  print(StatusPagamento.values[1]); // tranformar indice numeral em texto
}
