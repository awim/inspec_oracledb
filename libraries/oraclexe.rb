require 'oci8'

class Oraclexe < Inspec.resource(1)
  name 'oraclexe'

  desc "oracle resource class to verify any assessment related oracledb"

  # Roles / Priviledges => [:SYSDBA, :SYSOPER, :SYSASM, :SYSBACKUP, :SYSDG, or :SYSKM]

  # params = {
  #     :host     => '127.0.0.1',
  #     :port     => '1521',
  #     :user     => 'sys',
  #     :pass     => 'password',
  #     :service  => 'XE',
  #     :role     => 'SYSDBA',
  #     :db_name  => nil
  # }

  def initialize(params={})
    @param ||= params
    conn_string = "#{@param[:user]}/#{@param[:pass]}@#{@param[:host]}:#{@param[:port]}/#{@param[:service]}"

    if @param[:role]
      conn_string += " as #{@param[:role]}"
    end

    # example
    # @db = OCI8.new("sys/kelso2012@10.180.202.136:1521/XE as sysdba"
    begin
      @db = OCI8.new(conn_string)
    rescue OCIError
      puts $!.code.to_s + " " + $!.message
    end
  end

  def ping?
    return @db.ping
  end

  def select_username_scheme_from_dba_users
    begin
      cursor = connect.exec('SELECT username, expiry_date, account_status FROM dba_users')
      row = cursor.fetch()
      cursor.close
      connect.logoff
    rescue OCIError
      row = $!.code.to_s + " " + $!.message
    end

    return row
  end

  # def db_user_exist?(user)
  #   return select_username_scheme_from_dba_users.include? user
  # end

  private
  def connect
    return @db
  end

  def logoff
    return @db.logoff
  end
end