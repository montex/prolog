pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(rotational_cipher).

    test(rotate_a_by_0_same_output_as_input, condition(true)) :-
        rotate("a", 0, Ciphertext),
        Ciphertext == "a".

    test(rotate_a_by_1, condition(pending)) :-
        rotate("a", 1, Ciphertext),
        Ciphertext == "b".

    test(rotate_a_by_26_same_output_as_input, condition(pending)) :-
        rotate("a", 26, Ciphertext),
        Ciphertext == "a".

    test(rotate_m_by_13, condition(pending)) :-
        rotate("m", 13, Ciphertext),
        Ciphertext == "z".

    test(rotate_n_by_13_with_wrap_around_alphabet, condition(pending)) :-
        rotate("n", 13, Ciphertext),
        Ciphertext == "a".

    test(rotate_capital_letters, condition(pending)) :-
        rotate("OMG", 5, Ciphertext),
        Ciphertext == "TRL".

    test(rotate_spaces, condition(pending)) :-
        rotate("O M G", 5, Ciphertext),
        Ciphertext == "T R L".

    test(rotate_numbers, condition(pending)) :-
        rotate("Testing 1 2 3 testing", 4, Ciphertext),
        Ciphertext == "Xiwxmrk 1 2 3 xiwxmrk".

    test(rotate_punctuation, condition(pending)) :-
        rotate("Let's eat, Grandma!", 21, Ciphertext),
        Ciphertext == "Gzo'n zvo, Bmviyhv!".

    test(rotate_all_letters, condition(pending)) :-
        rotate("The quick brown fox jumps over the lazy dog.", 13, Ciphertext),
        Ciphertext == "Gur dhvpx oebja sbk whzcf bire gur ynml qbt.".

:- end_tests(rotational_cipher).
