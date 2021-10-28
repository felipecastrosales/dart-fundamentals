class SendEmail {
  bool call(String email) {
    print('Calling');
    return send(email);
  }

  bool send(String email) {
    print('Sending');
    return true;
  }
}
