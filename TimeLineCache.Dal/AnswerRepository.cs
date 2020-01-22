using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;

namespace TimeLineCache.Dal
{
	public interface IAnswerRepository
	{
		IEnumerable<Answer> GetAnswersForPeriod(DateTime start, DateTime eSnd);
	}

	public class AnswerRepository: IAnswerRepository
	{
		private readonly IConnectionProvider _connectionProvider;

		public AnswerRepository(IConnectionProvider connectionProvider)
		{
			_connectionProvider = connectionProvider;
		}

		public IEnumerable<Answer> GetAnswersForPeriod(DateTime start, DateTime eSnd)
		{
			using (var connection = _connectionProvider.GetConnection())
			{
				return connection.Query<Answer>("Select * FROM Answer");
			}
		}
	}

	public interface IConnectionProvider
	{
		SqlConnection GetConnection();
	}

	public class ConnectionProvider : IConnectionProvider
	{
		private readonly string _connectionString;

		public ConnectionProvider(string connectionString)
		{
			_connectionString = connectionString;
		}

		public SqlConnection GetConnection()
		{
			return new SqlConnection(_connectionString);
		}
	}

	public class Answer
	{
		public Guid Id { get; set; }
		public AnswerCategory Category { get; set; }
		public int Grade { get; set; }
		public Guid UserId { get; set; }
		public DateTime CreatedAt { get; set; }
	}

	public enum AnswerCategory
	{

	}
}
