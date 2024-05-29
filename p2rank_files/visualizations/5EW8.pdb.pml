
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5EW8.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5EW8.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1910,3964,1899,1902,1906,1885,1773,4031,4032,1756,1761,1763,4048,4049,1770,1784,4046,4183,4184,4186,3961,4179,4181,4182,4172,4175,1772,4158,4176,4177,4159,4163,4039,4037,1886,1890,1914,1921,1927,4197,4190,1909,1907,3965,3999,4001,4015,4021,4018,3998,3174,1685,1688,1904,1903,1924,1745,1755,1739,1725,1742] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1190,1189,1160,174,176,170,171,753,771,1273,1274,1266,1267,1268,1275,1174,225,226,227,732,750,173,360,744,498,372,374,375,376,531,611,727,728,530] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3562,2812,3567,3568,2689,2690,3484,3061,3561,2492,2493,2498,2499,2500,2502,2548,2550,3064,2497,2494,2496,3570,3581,3038,3039,2686,2688,3023,3043,2922,2845,2844,2549,2674,3089,3082,3485,3455,3469,3569,3092] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1630,1627,1489,1854,1903,1905,1660,1764,1466,1880,1888,1898] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1296,1297,1301,197,196,181,188,189,192,211,208,210,199,200,209,392,441,472,198,201,442,443,444,375,376,464] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4178,4323,4325,3736,3906,4040,4041,4096,4153,4176,4171] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2689,2690,2811,3592,2778,2781,2758,2511,2533,2534,2532,2522,2531,2520,2524,2782,2783,2786,2788,2755,2706,2756,3591,2512,2515] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1781,1786,1403,1447,1471,1431,1747,1429,4144,4145,4122,4113,4114,1776,1777,1780,1785,1789,4087,4088,4089,1768,1774,1775,1778] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1583,1584,1586,2135,1071,1588,2131,2125,2128,2130,1594,1595,1597] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [797,798,1422,1425,1436,1699,1157,1161,1162,1163,1165,1408,1409,1410,1434] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3692,3679,3706,3708,3704,3106,3108,3975,3753,3754,3460,3456,3458,3457] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        