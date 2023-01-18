namespace gregSharp.Controllers;
[ApiController]
[Route("api/[controller]")]
public class HousesController : ControllerBase
{
  private readonly HousesService _housesService;

  public HousesController(HousesService housesService)
  {
    _housesService = housesService;
  }

  [HttpGet]

  public ActionResult<List<House>> Get()
  {
    try
    {
      List<House> houses = _housesService.Get();
      return Ok(houses);
    }
    catch (Exception e)
    {
      return BadRequest(e.Message);

    }
  }
  [HttpGet("{id}")]
  public ActionResult<House> GetOneHouse(int id)
  {
    try
    {
      House house = _housesService.GetOneHouse(id);
      return Ok(house);
    }
    catch (Exception e)
    {
      return BadRequest(e.Message);
    }
  }


  [HttpPost]
  public ActionResult<House> Create([FromBody] House houseData)
  {
    try
    {
      House house = _housesService.Create(houseData);
      return Ok(house);
    }
    catch (Exception e)
    {
      return BadRequest(e.Message);
    }
  }

  [HttpDelete("{id}")]

  public ActionResult<string> Remove(int id)
  {
    try
    {
      string message = _housesService.Remove(id);
      return Ok(message);
    }
    catch (Exception e)
    {
      return BadRequest(e.Message);
    }
  }

  [HttpPut("{id}")]
  public ActionResult<House> Update([FromBody] House houseUpdate, int id)
  {
    try
    {
      House house = _housesService.Update(houseUpdate, id);
      return Ok(house);
    }
    catch (Exception e)
    {

      return BadRequest(e.Message);

    }
  }

}
