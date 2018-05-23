<?php

namespace WCPC2K18Bundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ScoreType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nbButTrDom', 'integer')
            ->add('nbButProlDom', 'integer')
            ->add('nbTabDom', 'integer')
            ->add('nbButTrExt', 'integer')
            ->add('nbButProlExt', 'integer')
            ->add('nbTabExt', 'integer')
            ->add('prolongation', 'checkbox')
            ->add('tirAuBut', 'checkbox');
    }
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'WCPC2K18Bundle\Entity\Score'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'wcpc2k18bundle_score';
    }


}
