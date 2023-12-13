using FoodAPI.Models;

namespace FoodAPI.Repositories.interfaces
{
    public interface IDocumentRepository
    {
        Task<Guid?> SaveImage(ImageDetails ImageDetails);
        Task<string> GetImage(Guid? temp_id);
    }
}
