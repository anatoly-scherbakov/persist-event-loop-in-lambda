from main import main


def test_repeated_execution():
    for _ in range(5):
        print(main())
