User.create!(
  [
    { name: 'User 1' },
    { name: 'User 2' },
    { name: 'User 3' },
    { name: 'User 4' },
    { name: 'User 5' }
  ]
)
Loan.create(
  [
    { title: 'Loan 1', active: true, user_id: 1 },
    { title: 'Loan 1', active: true, user_id: 1 },
    { title: 'Loan 1', active: true, user_id: 1 },
    { title: 'Loan 1', active: true, user_id: 2 },
    { title: 'User 5', active: true, user_id: 2 }
  ]
)