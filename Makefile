build:
	bazelisk build --config=ios-debug $(TARGET)

test:
	bazelisk test --config=ios "$(TARGET)Tests"

clean:
	bazelisk clean --expunge
