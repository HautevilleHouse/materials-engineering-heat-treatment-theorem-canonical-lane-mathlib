import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.HeatTreatmentAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

def bridgeClosed (A : HeatTreatmentAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : HeatTreatmentAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse