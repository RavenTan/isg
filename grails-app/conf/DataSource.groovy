dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {

            /*postgres
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            //url = "jdbc:h2:mem:devDb;MVCC=TRUE"
            driverClassName = "org.postgresql.Driver"
            dialect = org.hibernate.dialect.PostgreSQLDialect
            username = "postgres"
            password = "sqlroot"
            url = "jdbc:postgresql:aldb"
            */

            //mysql 
            
            //dbCreate = "update" // one of 'create', 'create-drop','update'
            username = "root"
            password = "sqlroot"
            //jndiName = "java:comp/env/jdbc/qqdb"
            url = "jdbc:mysql://localhost/isgdb"  
        }
    }
    test {
        dataSource {
            //dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            //configure DBCP
            properties {
                maxActive = 50
                maxIdle = 25
                minIdle = 1
                initialSize = 1
                minEvictableIdleTimeMillis = 60000
                timeBetweenEvictionRunsMillis = 60000
                numTestsPerEvictionRun = 3
                maxWait = 10000

                testOnBorrow = true
                testWhileIdle = true
                testOnReturn = false

                validationQuery = "SELECT 1"
            }
            /*heroku
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = org.hibernate.dialect.PostgreSQLDialect

            uri = new URI(System.env.DATABASE_URL?:"postgres://test:test@localhost/test")

            url = "jdbc:postgresql://"+uri.host+uri.path
            username = uri.userInfo.split(":")[0]
            password = uri.userInfo.split(":")[1]
            */

            //aws mysql
                //configure DBCP
                properties {
                    maxActive = 50
                    maxIdle = 25
                    minIdle = 1
                    initialSize = 1
                    minEvictableIdleTimeMillis = 60000
                    timeBetweenEvictionRunsMillis = 60000
                    numTestsPerEvictionRun = 3
                    maxWait = 10000

                    testOnBorrow = true
                    testWhileIdle = true
                    testOnReturn = false

                    validationQuery = "SELECT 1"
                }
            
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            jndiName = "java:comp/env/jdbc/isgdb"
        }
    }
}
