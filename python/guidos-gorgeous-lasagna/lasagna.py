EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.
 
    :param elapsed_bake_time: int baking time already elapsed.
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'.
 
    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    result = EXPECTED_BAKE_TIME - elapsed_bake_time
    return result

def preparation_time_in_minutes(number_of_layers):
    """Calculate how many minutes it will take to prepare all layers
 
    :param number_of_layers: int number of layers to prepare
    :return: int total number of minutes to prepare all layers
 
    Function that takes the number of layers to prepare, and
    returns the total number of minutes it will take to prepare all of those
    layers based on the `PREPARATION_TIME`
    """
    result = number_of_layers * PREPARATION_TIME
    return result

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate number of minutes that cooking has taken so far
 
    :param number_of_layers: int number of layers to prepare
    :param elapsed_bake_time: int number of minutes elapsed so far
 
    Function that takes the number of layers to prepare and the current number
    of minutes taken so far to cook the lasagna, and returns the number of
    minutes taken to prepare all layers based on the result of using the 
    `preparation_time_in_minutes` function, added to the `elapsed_bake_time`
    """
    result = preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
    return result