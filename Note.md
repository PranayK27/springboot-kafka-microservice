Note that we are sending an OrderEvent object to a Kafka Topic.

We created a KafkaTemplate<String, OrderEvent> since we are sending Java Objects to the Kafka topic that’ll automatically be transformed into a JSON byte[].

In this example, we created a Message using the MessageBuilder. It’s important to add the topic to which we are going to send the message too.
