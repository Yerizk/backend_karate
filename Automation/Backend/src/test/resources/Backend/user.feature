Feature: Service Users
  As QA Automation
  I want to consult a user
  To validate the status code and response

  Background: consume service
    * url url
    * def requestUser = { "id": '#(id)',"email": '#(email)', "first_name": '#(first_name)',"last_name": '#(last_name)',"avatar": '#(avatar)'}
    * def responsePost = read('responsePost.json')
    * def responsePut = read('responsePut.json')
    * def responsePostRegister = read('responsePostRegister.json')

  Scenario: service GET
    Given path 'users'
    When method get
    Then status 200

  Scenario: service POST
    Given path 'users'
    When method post
    Then status 201

  Scenario: service PUT
    Given path 'users','2'
    When method Put
    Then status 200

  Scenario: service DELETE
    Given path 'users','2'
    When method Delete
    Then status 204

  Scenario: Single User
    Given path 'users','662'
    When method get
    Then status 200
    And assert response.id == "662"

  Scenario: Service POST
    Given path 'users'
    When method post
    Then status 400


  Scenario: Service POST Register
    Given path 'register'
    When method post
    Then status 200
