using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using TimeLineCache.Dal;

namespace TimeLineCache.Controllers
{
	[ApiController]
	[Route("[controller]")]
	public class WeatherForecastController : ControllerBase
	{
		private static readonly string[] Summaries = new[]
		{
			"Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
		};

		private readonly ILogger<WeatherForecastController> _logger;
		private readonly IAnswerRepository _answerRepository;

		public WeatherForecastController(
			ILogger<WeatherForecastController> logger,
			IAnswerRepository answerRepository)
		{
			_logger = logger;
			_answerRepository = answerRepository;
		}

		[HttpGet]
		public IEnumerable<Answer> Get()
		{
			var answers = _answerRepository
				.GetAnswersForPeriod(new DateTime(2020, 1, 1), new DateTime(2020, 1, 30));

			return answers;
			//var rng = new Random();
			//return Enumerable.Range(1, 5).Select(index => new WeatherForecast
			//{
			//	Date = DateTime.Now.AddDays(index),
			//	TemperatureC = rng.Next(-20, 55),
			//	Summary = Summaries[rng.Next(Summaries.Length)]
			//})
			//.ToArray();
		}
	}
}
