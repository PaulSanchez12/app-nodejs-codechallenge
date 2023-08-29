INSERT INTO transaction_status (id, name) VALUES (1, 'pending');
INSERT INTO transaction_status (id, name) VALUES (2, 'approved');
INSERT INTO transaction_status (id, name) VALUES (3, 'rejected');

INSERT INTO transaction_type (id, name) VALUES (1, 'credit');
INSERT INTO transaction_type (id, name) VALUES (2, 'debit');

/*
mutation{
  createTransaction(transactionInput: {
    accountExternalIdDebit: "1fc54c37-fcdc-409e-92c4-dc266d16f3a8",
    accountExternalIdCredit: "",
    tranferTypeId: 1,
    value: 50.50
  }){
    transactionExternalId,
  }
}

query GetTransaction($id: String!) {
  transaction(id: $id) {
    transactionExternalId
    transactionType {
      name
    }
    transactionStatus {
      name
    }
    value
    createdAt
  }
}

query GetTransactions {
  transactions {
    transactionExternalId
    transactionType {
      name
    }
    transactionStatus {
      name
    }
    value
    createdAt
  }
}
*/