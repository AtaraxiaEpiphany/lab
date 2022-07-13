#include<stdint.h>
#include<stdlib.h>
#include<readline/history.h>
#include<readline/readline.h>

 /* Use the `readline` library to provide more flexibility to read from stdin.
 */

static char *rl_gets(){
    static char *line_read = NULL;
    if(line_read){
        free(line_read);
        line_read = NULL;
    }
    line_read = readline("(test)");
    if ( line_read && *line_read){
        add_history(line_read);
    }
    return line_read;
}

static int limited_rand( int limit ){
    int r, d = RAND_MAX / limit;
    /*
     * limit = limit * (Max/limit)
     * We get limited number with the value of origin variable `limit` 's  multiple(Max/limit).
     *
     * 0              to                limit *= d
     * +-----+-----+-----+-----+-----+-----+
     * |limit|limit|limit|limit|limit|limit|
     * +-----+-----+-----+-----+-----+-----+
     * limit = (origin limit) * (Max/limit)
     * 
     * rand r < limit   :<--[0,limit)
     * so we get equal probability random number less than limit,
     * since r / (Max/limit) as r / 1.
     * r is less than limit, 1 is (Max/limit)
     */
    limit *= d;
    do{
        r = rand();
    } while( r >= limit);
    return r / d;
}


