

#include "a01dl.h"

#include <stdio.h>
        #include <stdlib.h>
        #include "/usr/include/postgresql/libpq-fe.h"
/* libpq header file */

#include "string.h"

DBW* a01dl_init() {
    
    DBW*t=new DBW();
    int hostaddr[4]={127,0,0,1};
    int port=5432;
     char *dbname="test";
     char *user="postgres";
     char *password="123456";
    int connect_timeout=10;
    t->conn( hostaddr, port,(const char*)dbname,(const char*)user,(const char*)password, connect_timeout);
    fprintf(stdout,"Init dynamic lib a01dl...\n");
    return t;
}

         /*
         *  libpq sample program
         */
         
    DBW::DBW(){    
    m_connstr =new char[256];
    }   
    DBW::~DBW(){    
    delete m_connstr;
    PQfinish(m_conn);                                     /* disconnect from the database */
         
    } 
        int
        DBW::conn(int hostaddr[4],int port,const char*dbname,const char*user,const char*password,int connect_timeout)
        {
            char connstr[256]={'\0'};
            int retcode=0;
            
           PGresult   *res;                                    /* holds query result */
          
            sprintf(connstr,
                    "hostaddr = '%d.%d.%d.%d' port = '%d' dbname = '%s' user = '%s' password = '%s' connect_timeout = '%d'",
                    hostaddr[0],hostaddr[1],hostaddr[2],hostaddr[3],port,dbname,user,password,connect_timeout);
            strcpy(m_connstr,connstr);
            
            //conn = PQconnectdb("hostaddr = '192.168.1.5' port = '5432' dbname = 'gpsm' user = 'postgres' password = '123456' connect_timeout = '10'");                  /* connect to the database */
            //conn = PQconnectdb("hostaddr = '127.0.0.1' port = '5432' dbname = 'test' user = 'postgres' password = '123456' connect_timeout = '10'");                  /* connect to the database */
         
            
            m_conn=PQconnectdb(m_connstr);
            if (PQstatus(m_conn) == CONNECTION_BAD)               /* did the database connection fail? */
            {
                fprintf(stderr, "Connection to database failed.\n");
                fprintf(stderr, "%s", PQerrorMessage(m_conn));
                retcode=1;
            }
         
            
            return retcode;
        } 
         PGresult   *
        DBW::get(const char*sql)
        {
                   
             PGresult   *res;                                    /* holds query result */
            int         i;

            res = PQexec(m_conn, sql);                   /* send the query */
         
            if (PQresultStatus(res) != PGRES_TUPLES_OK)         /* did the query fail? */
            {
                fprintf(stderr, "query failed.\n");
                PQclear(res);
                res=NULL;
                
            }else
            {
         
            for (i = 0; i < PQntuples(res); i++)                /* loop through all rows returned */
            {
                printf("%s\n", PQgetvalue(res, i, 0));          /* print the value returned */
                printf("%s\n", PQgetvalue(res, i, 1));          /* print the value returned */
                printf("%s\n", PQgetvalue(res, i, 2));          /* print the value returned */
                printf("%s\n", PQgetvalue(res, i, 3));          /* print the value returned */
            }
            //PQclear(res);                                       /* free result */
         
            }
            return res;
        } 
         char   **
        DBW::get_data(const char*sql)
        {
       
            
            PGresult   *res;                                    /* holds query result */
            int         i;
         
          
           
            res = get(sql);                   /* send the query */
         
            if (PQresultStatus(res) != PGRES_TUPLES_OK)         /* did the query fail? */
            {
                fprintf(stderr, "query failed.\n");
                
                
                
            }else
            {
         
            for (i = 0; i < PQntuples(res); i++)                /* loop through all rows returned */
            {
                printf("%s\n", PQgetvalue(res, i, 0));          /* print the value returned */
                printf("%s\n", PQgetvalue(res, i, 1));          /* print the value returned */
                printf("%s\n", PQgetvalue(res, i, 2));          /* print the value returned */
                printf("%s\n", PQgetvalue(res, i, 3));          /* print the value returned */
            }
                                                 
         
            }
            PQclear(res); /* free result */
            return res;
        } 

         char   *
        DBW::get_user_param(const char*name){
         char        state_code[10]={'\0'};                          /* holds state code entered by user */
         char        query_string[256]={'\0'};                      /* holds constructed SQL query */
           printf("Enter a %s:  ",name);                    /* prompt user for a state code */
            scanf("%5s", state_code);
         
            sprintf(query_string,  
                    "SELECT * \
                     FROM contact1 \
                     WHERE idx = '%s' ", state_code
                    );
            
                            
         }