

#ifndef _a01dl_H
#define	_a01dl_H

#include "/usr/include/postgresql/libpq-fe.h"



class DBW
{
public:
    DBW();
    ~DBW();
    PGconn     *m_conn;  /* holds database connection */
    char *m_connstr;
    int conn(int hostaddr[4],int port,const char*dbname,const char*user,const char*password,int connect_timeout);
    PGresult   *
        get(const char*sql);  
     char   **
        get_data(const char*sql);
     char   *
        get_user_param(const char*name);
};

extern DBW* a01dl_init();

#endif	/* _a01dl_H */

