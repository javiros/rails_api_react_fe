class AllMessages extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      searchString: "",
      messages: []
    };
    this.handleChange = this.handleChange.bind(this);
    this.onSort = this.onSort.bind(this)
  }

  componentDidMount() {
    fetch('/api/v1/messages.json')
    .then((response) => { return response.json() })
    .then((data) => {
      this.setState({ messages: data });
      this.search.value;
    });
  }

  handleChange() {
    this.setState({
      searchString: this.search.value
    });
  }

  onSort(event, sortKey){
    const data = [];
    data.push(this.state.messages);
    data[0].sort((a,b) => a[sortKey].toString().localeCompare(b[sortKey].toString()))
    this.setState({data})
  }

  render() {
    let _messages = this.state.messages;
    let search = this.state.searchString.trim().toLowerCase();
    if (search.length > 0) {
      _messages = _messages.filter(function(message) {
        return message.last_name.toLowerCase().match(search) || message.email.toLowerCase().match(search);
      });
    }

    return (
      <div>
        <div>
          <input
            type="text"
            value={this.state.searchString}
            ref={input => this.search = input}
            onChange={this.handleChange}
            placeholder="Search by email or surname"
          />
          <table className="m-table">
            <thead>
              <tr>
                <th onClick={e => this.onSort(e, 'first_name')}>Name</th>
                <th>Email</th>
                <th onClick={e => this.onSort(e, 'amount')}>Amount</th>
              </tr>
            </thead>
            <tbody>
              {_messages.map(function(msg, index) {
                return (
                  <tr key={index} data-item={msg}>
                    <td data-title="Account">{msg.first_name} {msg.last_name}</td>
                    <td data-title="Value">{msg.email}</td>
                    <td data-title="Value">{msg.amount || 'N/A'}</td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </div>
    );

    return(
      <div>{_messages}</div>
    )
  }
}
